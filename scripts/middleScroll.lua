function onUpdatePost()
  if middlescroll and not inGameOver then
    setPropertyFromGroup('opponentStrums',0,'alpha',0)
    setPropertyFromGroup('opponentStrums',1,'alpha',0)
    setPropertyFromGroup('opponentStrums',2,'alpha',0)
    setPropertyFromGroup('opponentStrums',3,'alpha',0)

    setProperty('healthBar.x', 338)
    setProperty('healthcounter.x', 938)
  end
end